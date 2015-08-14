using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MySkillz.Startup))]
namespace MySkillz
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
