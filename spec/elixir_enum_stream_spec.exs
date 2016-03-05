defmodule ElixirEnumStreamSpec do
  use ESpec
  import ElixirEnumStream

  describe "Testing Enum and Stream modules" do
    context "All values in the list" do
      it "Returns the correct value for Enum" do
        expect testing_enum(50_000_000)|> to(eq(2450980465686204411764))
      end
      it "Returns the correct value for Enum" do
        expect testing_stream(50_000_000)|> to(eq(2450980465686204411764))
      end
    end

    context "Limited number of values in the list" do
      it "Returns the correct value for Enum" do
        expect testing_enum_limited(50_000_000)|> to(eq(111265))
      end
      it "Returns the correct value for Enum" do
        expect testing_stream_limited(50_000_000)|> to(eq(111265))
      end
    end

  end
end
