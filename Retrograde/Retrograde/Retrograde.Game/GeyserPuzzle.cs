using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Input;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Audio;
using SiliconStudio.Xenko.Particles;
using SiliconStudio.Xenko.Data;
namespace Retrograde
{
    public class GeyserPuzzle : SyncScript
    {
        // Declared public member fields and properties will show in the game studio
        //public IndexingDictionary<Entity> geysers; //25 geysers - 5 rows of 5
        
        public Entity[] geysers;
        
        public Entity geyser11;
        public Entity geyser12;
        public Entity geyser13;
        public Entity geyser14;
        public Entity geyser15;
        
        public Entity geyser21;
        public Entity geyser22;
        public Entity geyser23;
        public Entity geyser24;
        public Entity geyser25;
      
        public Entity geyser31;
        public Entity geyser32;
        public Entity geyser33;
        public Entity geyser34;
        public Entity geyser35;
       
        public Entity geyser41;
        public Entity geyser42;
        public Entity geyser43;
        public Entity geyser44;
        public Entity geyser45;
        
        public Entity geyser51;
        public Entity geyser52;
        public Entity geyser53;
        public Entity geyser54;
        public Entity geyser55;
        
        
         
        int[,] patternSequence = {
                                    {1, 1, 1, 1, 1,
                                     1, 1, 1, 1, 1,
                                     0, 0, 0, 0, 0,
                                     1, 1, 1, 1, 1,
                                     0, 0, 0, 0, 0},
                                     
                                    {1, 1, 1, 1, 1,
                                     0, 1, 1, 1, 0,
                                     0, 1, 1, 1, 0,
                                     1, 0, 0, 0, 1,
                                     1, 0, 0, 0, 1},
                                     
                                    {1, 1, 1, 1, 1,
                                     0, 0, 0, 0, 0,
                                     1, 1, 1, 1, 1,
                                     0, 0, 0, 0, 0,
                                     1, 1, 1, 1, 1},
                                     
                                    {1, 1, 0, 1, 1,
                                     1, 0, 0, 0, 1,
                                     0, 1, 1, 1, 0,
                                     0, 1, 1, 1, 0,
                                     1, 1, 1, 1, 1},
                                     };
                                     
        bool stepInProgress = false;
        int currentStep = 0;
        
        public Sound geyserSound;
        private SoundInstance soundInstance;
        
        public override void Start()
        {
            // Initialization of the script.
            soundInstance = geyserSound.CreateInstance();
            geysers = new Entity[25];
            geysers[0] = geyser11; geysers[1] = geyser12; geysers[2] = geyser13; geysers[3] = geyser14; geysers[4] = geyser15;
                        geysers[5] = geyser21; geysers[6] = geyser22; geysers[7] = geyser23; geysers[8] = geyser24; geysers[9] = geyser25;
                                    geysers[10] = geyser31; geysers[11] = geyser32; geysers[12] = geyser33; geysers[13] = geyser34; geysers[14] = geyser35;
                                                geysers[15] = geyser41; geysers[16] = geyser42; geysers[17] = geyser43; geysers[18] = geyser44; geysers[19] = geyser45;
                                                            geysers[20] = geyser51; geysers[21] = geyser52; geysers[22] = geyser53; geysers[23] = geyser54; geysers[24] = geyser55;
            
        }

        public override void Update()
        {
            // Do stuff every new frame
            if(stepInProgress)
            {
                
               if(soundInstance.PlayState == SoundPlayState.Stopped)
               {
                    stepInProgress = false;
                    currentStep = (currentStep + 1) % 4; //Number of patterns
                    
               }
            }
            else
            {
            
                for(int row = 0; row < 5; row++)
                {
                    for(int column = 0; column < 5; column++)
                    {
                        int index = row * 5 + column;
                        if(patternSequence[currentStep, index] == 1)
                        {
                            //How to hide particle system?
                            geysers[index].GetAll<ActivableEntityComponent>().ToArray()[0].Enabled = true;
                            geysers[index].Get<PhysicsComponent>().Enabled = true;
                            //geysers[index].Get<EntityComponent>(1)
                        }
                        else
                        {
                            geysers[index].GetAll<ActivableEntityComponent>().ToArray()[0].Enabled = false;
                            geysers[index].Get<PhysicsComponent>().Enabled = false;
                        }
                    }
                }
                soundInstance.Play();
                soundInstance.Volume = 0.5f;
                stepInProgress = true;
            }
            
            
        }
    }
}
