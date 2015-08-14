using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using MySkillz.App_Code;

namespace MySkillz.Tests
{
    [TestClass]
    public class MyClassTests
    {
        [TestMethod]
        public void VerifyMyCountReturnsInteger()
        {
            MyClass obj = new MyClass();
            obj.UpTheCount();
            Assert.IsTrue(obj.MyCount.GetType() == typeof(int), "MyCount property is returning non-integer numbers");
        }

        [TestMethod]
        public void VerifyMyCountIsIncremented()
        {
            int expectedCount = 0;
            int currentCount;
            MyClass obj = new MyClass();
            currentCount = obj.MyCount;
            Assert.AreEqual(expectedCount, currentCount, "Initial Count values do not match");
            expectedCount += 2;
            obj.UpTheCount();
            obj.UpTheCount();
            currentCount = obj.MyCount;
            Assert.AreEqual(expectedCount, currentCount, "Incremented Count values do not match");
        }

        [TestMethod]
        public void testMyCountException()
        {
            try
            {
                MyClass obj = new MyClass();
                for (int i = 1; i <= int.MaxValue; i++ )
                    obj.UpTheCount();
            }
            catch (OverflowException ex) { return; }
            Assert.Fail("Method did not throw OverflowException");
        }
    }
}
