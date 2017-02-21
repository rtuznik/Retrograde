using SiliconStudio.Xenko.Engine;

namespace Retrograde
{
    class RetrogradeApp
    {
        static void Main(string[] args)
        {
            using (var game = new Game())
            {
                game.Run();
            }
        }
    }
}
