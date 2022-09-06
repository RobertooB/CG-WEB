using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AplicativosIT.App_Code
{
    public class DocumentsApp
    {
        static DocumentsApp appInstance;

        public UserService User { get; protected set; }

        public DocumentsApp() { }

        public virtual void Start()
        {
            User.CheckActivityWithDelay();
        }

        public virtual void Initialize()
        {
            User = new UserService(this);
        }
    }

    public class ServiceBase
    {
        public DocumentsApp DocumentsApp { get; private set; }

        public ServiceBase(DocumentsApp app)
        {
            DocumentsApp = app;
        }
    }
}