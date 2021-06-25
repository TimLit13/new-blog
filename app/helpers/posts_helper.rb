module PostsHelper
  def tag_cloud(tags, classes)
    if tags && classes
      max = tags.sort_by(&:count).last
      maximum = max.count.to_f

      tags.each do |tag|
        index = (tag.count.to_f / maximum) * (classes.length - 1)
        yield(tag, classes[index.round])
      end
    end
  end
end
