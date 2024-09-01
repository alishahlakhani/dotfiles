#======================Dock settings =================
defaults write com.apple.dock "orientation" -string "bottom"
defaults write com.apple.dock "tilesize" -int "32"
defaults write com.apple.dock "autohide" -bool false # Always display the dock (default)
defaults write com.apple.dock "show-recents" -bool false # Do not display recent apps in the Dock
defaults write com.apple.dock "mineffect" -string "genie" # Genie effect for minimizing windows (default)
defaults write com.apple.dock "scroll-to-open" -bool "true" # Scroll up on a Dock icon to show all Space's opened windows for an app, or open stack.

#======================Screencapture settings =================
mkdir -p $HOME/Desktop/Screenshots # Create "Screenshots" folder on the desktop and set it as the default location 
defaults write com.apple.screencapture "location" $HOME/Desktop/Screenshots  
defaults write com.apple.screencapture "show-thumbnail" -bool true # Display the thumbnail after taking a screenshot (default)
defaults write com.apple.screencapture "include-date" -bool false # Don't include date in the screenshot file name
defaults write com.apple.screencapture "type" -string "jpg"

#======================Finder settings =================
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool true # Show filename extensions 
defaults write com.apple.finder "AppleShowAllFiles" -bool "true" # Show hidden files in the Finder. 
defaults write com.apple.finder "ShowPathbar" -bool true # Show path bar in the bottom of the Finder windows
defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv" # Set the default view style for folders without custom setting to list view
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true" # Keep folders on top when sorting by name
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf" # Set the default search scope when performing a search in Finder to the current folder

#======================Desktop settings =================
defaults write com.apple.finder "_FXSortFoldersFirstOnDesktop" -bool "true" # Keep folders on top when sorting

#======================Trackpad settings =================
defaults write com.apple.AppleMultitouchTrackpad "FirstClickThreshold" -int 0
defaults write com.apple.AppleMultitouchTrackpad "DragLock" -bool false
defaults write com.apple.AppleMultitouchTrackpad "Dragging" -bool false
defaults write com.apple.AppleMultitouchTrackpad "TrackpadThreeFingerDrag" -bool false

#======================Mission Control settings =================
defaults write com.apple.dock "mru-spaces" -bool false # Do not rearrange spaces based on most recent use
defaults write com.apple.dock "expose-group-apps" -bool true # Do not group windows by application (default)

#======================Text Edit settings =================
defaults write com.apple.TextEdit "RichText" -bool false # Set default document format as plain text (.txt)

#======================Activity Monitor settings =================
defaults write com.apple.ActivityMonitor "IconType" -int "5" # Choose what information should be shown in the app's Dock icon, if any

# Set vscode as default application for all my source code files
local extensions=(
    ".c"
    ".cpp"
    ".js"
    ".jsx"
    ".ts"
    ".tsx"
    ".json"
    ".md"
    ".sql"
    ".html"
    ".css"
    ".scss"
    ".sass"
    ".py"
    ".sum"
    ".rs"
    ".go"
    ".sh"
    ".log"
    ".toml"
    ".yml"
    ".yaml"
    "public.plain-text"
    "public.unix-executable"
    "public.data"
)

for ext in $extensions; do
    duti -s com.microsoft.VSCode $ext all
done
