using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Input;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Physics;
using SiliconStudio.Xenko.Audio;

namespace Retrograde
{
    public class GeyserTrigger : AsyncScript
    {
        private SoundInstance gruntInstance;
        public override async Task Execute()
        {
        var trigger = Entity.Get<PhysicsComponent>();
        //trigger.ProcessCollisions = true;
            while(Game.IsRunning)
            {
                var collision = await trigger.NewCollision();
                
                if(gruntInstance != null)
                {
                    gruntInstance.Stop();
                }
                
                var player = trigger == collision.ColliderA ? collision.ColliderB : collision.ColliderA;
                if(trigger.Enabled == true)
                {
                    gruntInstance = player.Entity.Get<AudioEmitterComponent>().Sounds["grunt"].CreateInstance();
                    gruntInstance.IsLooping = false;
                    gruntInstance.Play();
                }
            }
        }
    }
}
