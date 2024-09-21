module ApplicationHelper
    def toggle_sort_direction(current_sort)
        if current_sort == params[:sort]
            params[:direction] == 'asc' ? 'desc' : 'asc'
        elsif current_sort == session[:sort]
            session[:direction] == 'asc' ? 'desc' : 'asc'
        else
            'asc'
        end
    end
end
