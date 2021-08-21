using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UnescoCrawler.Business
{
    internal class Crawler
    {
        internal void StartCrawl()
        {
            string startUrl = ConfigurationManager.AppSettings["UnescoSitesListBaseUrl"];
            if (string.IsNullOrEmpty(startUrl))
            {
                throw new Exception("No base url defined!");
            }

            var listPageContent = Common.WebHelper.GetUrlContent(startUrl);
            var sites = SitesParser.ParseSitesList(listPageContent);
        }
    }
}
