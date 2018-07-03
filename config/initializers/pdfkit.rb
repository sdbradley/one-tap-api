# config/initializers/pdfkit.rb
PDFKit.configure do |config|
    config.default_options = {
        page_size: 'A4',
        print_media_type: true,
        dpi: 800,
        footer_center: "Page [page] of [toPage]",
        footer_font_size: 8
    }
end
