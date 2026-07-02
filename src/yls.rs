use zed_extension_api::Extension;

struct YaraExtension {}

impl Extension for YaraExtension {
    fn new() -> Self {
        Self {}
    }

    fn language_server_command(
        &mut self,
        _language_server_id: &zed_extension_api::LanguageServerId,
        _worktree: &zed_extension_api::Worktree,
    ) -> zed_extension_api::Result<zed_extension_api::Command> {
        let server_name = _language_server_id.as_ref();
        if server_name == "yr-ls" {
            if let Some(path) = _worktree.which("yr-ls") {
                return Ok(zed_extension_api::process::Command {
                    command: path,
                    args: vec![],
                    env: vec![],
                });
            }
            if let Some(path) = _worktree.which("yls") {
                return Ok(zed_extension_api::process::Command {
                    command: path,
                    args: vec!["-v".into()],
                    env: vec![],
                });
            }
            return Err("Unable to find yr-ls or yls from worktree.".into());
        }

        Err(format!("Unknown language server: {}", server_name).into())
    }
}

zed_extension_api::register_extension!(YaraExtension);
