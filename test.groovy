import hoge.Hoge
import piyo.HogeExtension

def hoge = new Hoge()
println """\
クラスパスチェック:
hoge.Hoge: ${Hoge}
piyo.HogeExtension: ${HogeExtension}

追加するメソッドを直接呼び出す:
extension method: ${HogeExtension.sayPiyo(hoge, 'direct call')}

拡張したインスタンス経由で、追加したメソッドを呼び出す:
say piyo -> ${hoge.sayPiyo('via extended instance')}
"""

