Class dc.automl.nasdaq Extends (%Persistent, %JSON.Adaptor)
{

Property StockDate As %Date;

Property Open As %Double;

Property High As %Double;

Property Low As %Double;

Property Close As %Double;

Property AdjClose As %Double;

Property Volume As %Integer;

Property Name As %String;

Storage Default
{
<Data name="nasdaqDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>StockDate</Value>
</Value>
<Value name="3">
<Value>Open</Value>
</Value>
<Value name="4">
<Value>High</Value>
</Value>
<Value name="5">
<Value>Low</Value>
</Value>
<Value name="6">
<Value>Close</Value>
</Value>
<Value name="7">
<Value>AdjClose</Value>
</Value>
<Value name="8">
<Value>Volume</Value>
</Value>
<Value name="9">
<Value>Name</Value>
</Value>
</Data>
<DataLocation>^dc.automl.nasdaqD</DataLocation>
<DefaultData>nasdaqDefaultData</DefaultData>
<IdLocation>^dc.automl.nasdaqD</IdLocation>
<IndexLocation>^dc.automl.nasdaqI</IndexLocation>
<StreamLocation>^dc.automl.nasdaqS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
