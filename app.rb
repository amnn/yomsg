require 'sinatra'

get '/:msg' do
  haml :index
end

__END__
@@ layout
%html
%head
  %link{rel: 'stylesheet', type:'text/css', href:'http://fonts.googleapis.com/css?family=Montserrat'}
  :css
    body {
      font-family: 'Montserrat', arial, sans-serif;
      background-color: #9B59B6;
      color: #FFFFFF;
      text-align: center;
      font-size: 5em;
    }

%body
  = yield

@@ index
= params[:msg]
