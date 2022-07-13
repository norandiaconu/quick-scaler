# quick-scaler 1.0.3
Scripts to quickly switch between 150% and 250% scaling. A use case is for when you are using the computer at a desk and later on from further away.  
Scripts added for changing Windows multiple displays setting.  
Only supported on Windows.

## Npm installation
- npm i quick-scaler

## Npm usage
- npx quick-scaler up
  - Upscale to 250% and change to second audio source.
- npx quick-scaler down
  - Downscale to 150% and change to first audio source.
- npx quick-scaler laptop
  - Change the 'Multiple displays' setting to 'Show only on 1'.
- npx quick-scaler monitor
  - Change the 'Multiple displays' setting to 'Show only on 2'.

## Windows Usage
- Double click `Downscale.bat` to bring scaling to 150% and change to first audio source.
- Double click `Upscale.bat` to bring scaling to 250% and change to second audio source.
  - The number of `DOWN` commands on line 8 determines what the scaling will be changed to and can be changed to other values in 25%/50% increments.
  - The number of `DOWN` commands on line 12 determines what the audio source will be changed to and can be changed to other values.
<br/><br/>
- Double click `Laptop.bat` to change the 'Multiple displays' setting to 'Show only on 1'.
- Double click `Monitor.bat` to change the 'Multiple displays' setting to 'Show only on 2'.