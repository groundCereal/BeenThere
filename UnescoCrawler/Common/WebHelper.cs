using NLog;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace UnescoCrawler.Common
{
    /// <summary>
    /// Helper class containing methods to access Internet content
    /// </summary>
    internal class WebHelper
    {
        private static Logger _logger = LogManager.GetCurrentClassLogger();

        /// <summary>
        /// Returns the html content of a given url response
        /// </summary>
        /// <param name="url">The url of the page from where to get the content.</param>
        /// <returns></returns>
        public static string GetUrlContent(string url)
        {
            try
            {
                
                WebRequest myWebRequest;
                WebResponse myWebResponse;

                myWebRequest = WebRequest.Create(url);

                _logger.Trace("Requesting response from url: {0}", url);
                myWebResponse = myWebRequest.GetResponse();
                _logger.Trace("Web response obtained.");

                Stream streamResponse = myWebResponse.GetResponseStream();

                StreamReader sreader = new StreamReader(streamResponse);
                var content = sreader.ReadToEnd();

                _logger.Trace("Web response content for url [{0}]: {1}", url, content);

                return content;
            }
            catch(Exception ex)
            {
                _logger.Error(ex, "Error getting url content [url:{0}]", url);
                return null;
            }
        }
    }
}
