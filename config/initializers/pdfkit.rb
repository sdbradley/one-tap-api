# config/initializers/pdfkit.rb
PDFKit.configure do |config|
    config.wkhtmltopdf = '/opt/rubies/ruby-2.3.6/bin/wkhtmltopdf'
    config.default_options = {
        page_size: 'A4',
        print_media_type: true,
        dpi: 400,
        footer_center: "Page [page] of [toPage]",
        footer_font_size: 8,
        footer_spacing: 2
    }
end
