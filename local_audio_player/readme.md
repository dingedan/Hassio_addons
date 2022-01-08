Installation
1. Copy these files into the /addons/local_audio_player/ folder
2. In the UI, Go to configuration > Add-ons, Backups & Supervisor > Add-On Store
3. If the add-on is not listed under 'Local add-ons', hit 'reload' from the 'more' menu. 
4. Install

OR
1. Add my repository https://github.com/dingedan/Hassio_addons/ and install that way

Usage
```yaml
      - service: hassio.addon_stdin     
        data:        
          addon: local_audio_player          
          input: "http://192.168.1.100:8123/local/doorbell.mp3"
```
