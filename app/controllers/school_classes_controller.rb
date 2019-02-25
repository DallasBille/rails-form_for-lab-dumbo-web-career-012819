class SchoolClassesController < ApplicationController

    # before_action only:

    def index
        @school_classes = SchoolClass.all
    end

    def show
        get_school_class
    end

    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class = SchoolClass.create(class_params)
        redirect_to @school_class
    end

    def edit
        get_school_class
    end

    def update
        get_school_class
        @school_class.update(class_params)
        redirect_to @school_class
    end





private

    def get_school_class
        @school_class = SchoolClass.find(params[:id])
    end

    def class_params
        params.require(:school_class).permit(:title, :room_number)
    end
end
