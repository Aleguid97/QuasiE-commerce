using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication3
{
    public class Prodotto
    {

        public int Id { get; set; }
        public string Nome { get; set; }
        public string Descrizione { get; set; }
        public decimal Prezzo { get; set; }
        public string UrlImmagine { get; set; }

        public static List<Prodotto> Prodotti = new List<Prodotto>()
            {
                new Prodotto { Id = 1, Nome = "iPhone11", Descrizione = "Descrizione Articolo 1", Prezzo = 1034.00m, UrlImmagine = "./Content/Immagini/iPhone11.jpg" },
                new Prodotto { Id = 2, Nome = "iPhone12", Descrizione = "Descrizione Articolo 1", Prezzo = 1543.00m, UrlImmagine = "./Content/Immagini/iPhone12.jpg" },
                new Prodotto { Id = 3, Nome = "iPhone13", Descrizione = "Descrizione Articolo 1", Prezzo = 1234.00m, UrlImmagine = "./Content/Immagini/iPhone15.jpg" },
                new Prodotto { Id = 4, Nome = "iPhone15", Descrizione = "Descrizione Articolo 1", Prezzo = 1432.00m, UrlImmagine = "./Content/Immagini/iPhone13.jpg" },
            };

        public static Prodotto GetProductById(int productId)
        {
            return Prodotti.FirstOrDefault(p => p.Id == productId);
        }
    }
}