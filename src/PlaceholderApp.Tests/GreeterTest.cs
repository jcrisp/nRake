using System;
using NUnit.Framework;

namespace PlaceholderApp.Tests
{
	[TestFixture]
	public class GreeterTest
	{
		[Test]
		public void GreetingShouldBeHelloWorld()
		{
			Assert.AreEqual("Hello World", new Greeter().Greeting);
		}
	}
}
