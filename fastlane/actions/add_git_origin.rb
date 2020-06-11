module Fastlane
  module Actions
    module SharedValues
      ADD_GIT_ORIGIN_CUSTOM_VALUE = :ADD_GIT_ORIGIN_CUSTOM_VALUE
    end

    class AddGitOriginAction < Action
      def self.run(params)          
        # params[:参数名称] 参数名称与下面self.available_options中的保持一致
        
        origin = Actions.sh("git remote")
        if origin == ""
            url = "https://gitee.com/"+File.basename(File.expand_path(".."))+"/"+File.basename(File.expand_path("."))+".git"
            command = "git remote add origin "+url
            result = Actions.sh(command,error_callback: ->(result) {UI.success(result)})
            UI.success("Successfully add origin 🚀 ")
            return result
        end
#
#        command = []
#        if rmLocalTag
#          # 删除本地标签
#          # git tag -d 标签名称
#          command << "git tag -d #{tagNum}"
#        end
#
#
#        result = Actions.sh(command.join('&'))
#        UI.success("Successfully remove tag 🚀 ")
#        return result

      end

      #####################################################
      # @!group Documentation
      #####################################################

      # 可以使用 fastlane action remove_git_tag 来参看详细描述
      # 

      def self.description
        "添加远程源地址"
      end

      def self.details
        "使用当前action来添加远程源地址origin"
      end

      def self.available_options
        # Define all options your action supports. 
        
        # Below a few examples
        [ ]
      end

      def self.output
        # Define the shared values you are going to provide
        # Example
        # [
        #   ['REMOVE_GIT_TAG_CUSTOM_VALUE', 'A description of what this value contains']
        # ]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.authors
        # So no one will ever forget your contribution to fastlane :) You are awesome btw!
        ["Liang Qiu Bing"]
      end

      def self.is_supported?(platform)
        # you can do things like
        # 
        #  true
        # 
        #  platform == :ios
        # 
        #  [:ios, :mac].include?(platform)
        # 

        platform == :ios
      end
    end
  end
end
