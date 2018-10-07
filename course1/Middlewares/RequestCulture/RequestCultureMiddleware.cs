namespace course1.Middlewares.RequestCulture
{
    using System.Globalization;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Http;

    public class RequestCultureMiddleware
    {
        private readonly RequestDelegate _next;
        public RequestCultureMiddleware(RequestDelegate next)
        {
            _next = next;
        }

        public Task InvokeAsync(HttpContext context)
        {
            var cultureQuery = context.Request.Query["culture"];
            if (!string.IsNullOrWhiteSpace(cultureQuery))
            {
                var culture = new CultureInfo(cultureQuery);
                CultureInfo.CurrentCulture = culture;
                CultureInfo.CurrentUICulture = culture;
            }

            // Call the next delegate/middleware in the pipeline
            return this._next(context);
        }
    }
}
