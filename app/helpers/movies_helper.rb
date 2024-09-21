module MoviesHelper
    def highlight_column(column_name, context)
        if session[:sort] == column_name
            case session[:direction]
            when 'asc'
              context == :header ? 'highlight-header-asc' : 'highlight-data-asc'
            when 'desc'
              context == :header ? 'highlight-header-desc' : 'highlight-data-desc'
            end
        else
            ''
        end
    end
end
