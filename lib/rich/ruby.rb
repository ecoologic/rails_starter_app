module Rich
  module Ruby
    def self.method_name(level = 0)
      caller[level].match(/`(.+)'/)[1].to_sym
    end
  end
end
