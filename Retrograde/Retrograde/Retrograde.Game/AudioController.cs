using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Input;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Audio;

namespace Retrograde
{
    public class AudioController : SyncScript
    {
        // Declared public member fields and properties will show in the game studio
        AudioEngine audioEngine;
        public Sound backgroundMusic;
        private SoundInstance backgroundMusicInstance;
        private float volume = 1;
        private bool increasingVolume = true;

        public override void Start()
        {
            // Initialization of the script.
            audioEngine = Audio.AudioEngine;
            backgroundMusicInstance = backgroundMusic.CreateInstance();
            backgroundMusicInstance.Volume = volume;
            
            backgroundMusicInstance.IsLooping = true;
            backgroundMusicInstance.Play();
        }

        public override void Update()
        {
            // Do stuff every new frame

            if (Input.IsKeyPressed(Keys.Enter)) //Testing
            {

                //backgroundMusicInstance.IsLooping = true;
                //backgroundMusicInstance.Play();
            }
            
            if(increasingVolume)
            {
                volume += 0.01f;
            }
            if(!increasingVolume)
            {
                volume -= 0.01f;
            }
            
            if(volume <= 0f || volume >= 1f)
            {
                increasingVolume = !increasingVolume;
            }
            backgroundMusicInstance.Volume = volume;

                
        }
    }
}
