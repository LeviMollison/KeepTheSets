class ItemSetController < ApplicationController
    
    layout 'item_sets'
    before_action :confirm_logged_in, :except=>[:login, :attempt_login, :logout]
    def index
        @item_set = ItemSet.first
    end
    
    def show
        @item_sets = ItemSet.all
        @items = Item.all
    end
    
    def display_row
        @rows = ItemSet.find(params[:id]).rows
        @items = Item.all
    end
    
    def save_item_to_row
        # save item_id to row 
        @row = Row.find(params[:row_id])
        @row_items = @row.items
        @itemToAdd = Item.find(params[:item_id])
        unless @row_items.include?(@itemToAdd)
            @row_items << @itemToAdd
            if @row.save
                flash[:notice] = "#{@itemToAdd.name} added successfully!"
                redirect_back fallback_location: {action: 'display_row', id:  params[:row_id]}
            end
        else
            flash[:notice] = "#{@itemToAdd.name} already in Set!"
            redirect_back fallback_location: {action: 'display_row', id: params[:row_id]}
        end
        
    end
    
    def add_new_row    
        @row = Row.create(:name=>"New Name, Change Me!")
        @set = ItemSet.find(params[:id])
        if @set.rows << @row
            flash[:notice] = "#{@row.name} created!"
            redirect_back fallback_location: {action: 'display_row', id:  params[:id]}
        else
            flash[:notice] = "Row didn't create, try again"
            redirect_back fallback_location: {action: 'display_row', id: params[:id]}
        end
    end
    
    def save_row_name
        @row = Row.find(params[:id])
        @row.name = params[:name]
        if @row.save
            flash[:notice] = "#{@row.name} changed successfully!"
            redirect_back fallback_location: {action: 'display_row', id:  params[:id]}
        else
            flash[:notice] = "Changes didn't save, try again"
            redirect_back fallback_location: {action: 'display_row', id: params[:id]}
        end
        
    end
    
    def delete_store_in
        @storeIn = StoreIn.find(params[:id])
        @rowID = @storeIn.row_id
        if @storeIn.destroy
            flash[:notice] = "Successfully Removed Item"
            redirect_back fallback_location: {action: 'display_row', id: @rowID}
        else
            flash[:notice] = "Couldn't Remove Item"
            redirect_back fallback_location: {action: 'display_row', id: @rowID}
        end
    end
    
    def new
    end
    
    def create
    end
    
    def edit
    end
    
    def update
    end
    
    def delete
    end
    
    def destroy
    end
    
end
