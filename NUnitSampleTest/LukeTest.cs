using NUnit.Framework;
using NUnitSample;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleTest
{
    [TestFixture]
    public class LukeTest
    {
        Luke luke;

        [SetUp]
        public void SetUp()
        {
            luke = new Luke();
        }
        [TearDown]
        public void TearDown()
        {

        }
        [Test]
        public void Test_普通のテスト()
        {
            Assert.That(luke.Div(10, 5), Is.EqualTo(2));
        }
        [Test]
        public void Test_例外のテスト()
        {
            // 引数なし
            Assert.That(luke.Boom, Throws.TypeOf<NotSupportedException>());

            // lambda式で渡す
            Assert.That(() => luke.Div(1, 0), Throws.TypeOf<DivideByZeroException>());
        }
    }
}
