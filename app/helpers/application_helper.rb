module ApplicationHelper
  # HTMLで書けない文字の実体参照と改行コードのHTMLへの置換を行う
  def hbr(target)
  target = html_escape(target)
  target.gsub(/\r\n|\r|\n/, "<br />")
  end
end
