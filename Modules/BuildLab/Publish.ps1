function Publish-Build {
    robocopy /s /z $BuildRoot $PublishRoot /XD Logs
}