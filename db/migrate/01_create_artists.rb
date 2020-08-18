class CreateArtists < ActiveRecord::Migration[4.2]#migrations need to be connected to a database; this can be done usually in the config/environment.rb
    # def up #DO: defines the code executed when the migration is run 
    # end

    # def down #UNDO: defines the code executed when migration is rolled back
    # end

    # in addition to #up and #down there is #change, which is the primary way of writing migrations. 
    def change 
        create_table :artists do |t| ##create_table is the method; :artists is the name of the table passed a symbol, and |t| refers to the individual column
            t.string :name
            t.string :genre
            t.integer :age
            t.string :hometown
            #t.DATATYPE :COLUMN_NAME is how the columns of the table are set
            #primary keys are created automatically by Active Record; no need to implement them explicitley. 
        end
    end
end
    #in addition to #create_table:
        # remove_table
        # rename_table
        # remove_column
        # add_column
        # & more