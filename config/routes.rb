Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get("square/:num", { :controller => "calculations", :action => "square" })
  get("square_root/:num", { :controller => "calculations", :action => "square_root" })
  get("random/:lower/:upper", { :controller => "calculations", :action => "random" })
  get("payment/:interest/:term/:principal", { :controller => "calculations", :action => "payment" })
end
