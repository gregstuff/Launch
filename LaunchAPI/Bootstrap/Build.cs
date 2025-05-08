using System.Diagnostics;

namespace LaunchAPI.Bootstrap
{
    public static class Build
    {

        public static bool IsDebug { get; private set; }

        static Build()
        {
            IsDebug = false;
            SetFlagOnDebugBuild();
        }

        [Conditional("DEBUG")]
        static void SetFlagOnDebugBuild()
        {
            IsDebug = true;
        }
    }
}
