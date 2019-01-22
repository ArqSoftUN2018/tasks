class WsExamplesControllerController < ApplicationController
  #http://192.168.99.101:4000/wsresources/wsdl
   soap_service namespace: 'urn:WashOutResources', camelize_wsdl: :lower
   soap_action "viewTasks",
               :args => { :tasksId => :integer},
               :return => { :tasksValid => :boolean, :tasksId => :integer, :tasksName => :string,
                    :tasksDescription => :string, :tasksBoard => :integer}
   def viewTasks
       if (Tasks.exists?(id: params[:tasksId]))
           @tasks = Tasks.find(params[:tasksId])
           id = @tasks.id
           name = @tasks.name
           description = @tasks.description
           board = @tasks.board
           render :soap => { :tasksValid => true, :tasksId => id, :tasksName => name,
               :tasksDescription => description, :tasksBoard => board}
       else
           render :soap => { :tasksValid => false, :tasksId => 0, :tasksName => "",
               :tasksDescription => "", :tasksBoard => 0}
       end
end
end
