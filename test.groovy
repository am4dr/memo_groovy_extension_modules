import hoge.Hoge
import piyo.HogeExtension

assert Hoge
assert HogeExtension

def exception = null
try { new Hoge().sayPiyo('piyo') }
catch (MissingMethodException e) { exception = e }
assert exception == null

def hoge = new Hoge()
println """\
クラスパスチェック:
hoge.Hoge: ${Hoge}
piyo.HogeExtension: ${HogeExtension}

追加するメソッドを拡張を実装しているクラス上で直接呼び出す:
HogeExtention.sayPiyo: ${HogeExtension.sayPiyo(hoge, 'direct call')}

拡張したインスタンス経由で、追加したメソッドを呼び出す:
Hoge.sayPiyo: ${hoge.sayPiyo('via extended instance')}\
"""

