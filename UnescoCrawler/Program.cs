using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnescoCrawler.Business;

namespace UnescoCrawler
{
    class Program
    {
        static void Main(string[] args)
        {
            var crawl = new Crawler();
            crawl.StartCrawl();
        }
    }
}
