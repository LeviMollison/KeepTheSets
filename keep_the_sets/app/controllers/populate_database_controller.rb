class PopulateDatabaseController < ApplicationController
    #show all items
    def index
        @item = Item.all
    end
    
    #item with id
    def show
        @item = Item.getItemByName("Abyssal Scepter")
    end
    
    #show new item form
    def new
        @item = Item.new
    end
    
    #create new item
    def create
        @item = Item.create(
            :name => params[:name],
            :health => params[:health],
            :magic_resist => params[:magic_resist],
            :health_regen => params[:health_regen],
            :armor => params[:armor],
            :damage => params[:damage],
            :crit_strike => params[:crit_strike],
            :attack_speed => params[:attack_speed],
            :life_steal => params[:life_steal],
            :spell_vamp => params[:spell_vamp],
            :ability_power => params[:ability_power],
            :cooldown_reduction => params[:cooldown_reduction],
            :mana => params[:mana],
            :mana_regen => params[:mana_regen],
            :movement_speed => params[:movement_speed],
            :armor_pen => params[:armor_pen],
            :magic_pen => params[:magic_pen],
            :tenacity => params[:tenacity],
            :isConsumable => params[:isConsumable],
            :description => params[:description]
        )
        if @item.save 
          flash[:notice] = "Item created successfully"
          redirect_to("populate_database/show")
      else
          render('new')
      end
    end
    
    # show edit form for item with id
    def edit
    end
    
    #update item with id
    def update
    end
    
    #delete form for item with id
    def delete
    end
    
    #delete item
    def destroy
    end
end
