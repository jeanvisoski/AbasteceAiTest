  Dado('acessar a página do produto') do
    visit 'http://automationpractice.com/index.php'

    @page = Checkout::Checkout.new
  end
  
  Quando('adicionar um produto ao carrinho') do
    @page.product.click
    @page.add_to_cart.click
  end
  
  Então('validar fechamento de pedido para cenário {string}') do |tipo|
    if tipo.eql?('positivo')
        @page.proceed_checkout.click
        @page.summary_proceed_checkout.click
        
        step 'realizar login'
    
        @page.address_proceed_checkout.click
        @page.accept_terms.click
        @page.shipping_proceed_checkout.click
        @page.payment.click
        @page.confirm_order.click
        expect(@page.sucess_order.text).to eql('Your order on My Store is complete.')
    else
        @page.proceed_checkout.click
        @page.summary_proceed_checkout.click
        
        step 'realizar login'

        @page.address_proceed_checkout.click
        @page.shipping_proceed_checkout.click
        expect(@page.not_accept_terms.text).to eql('You must agree to the terms of service before continuing.')
    end
  end
  
  Quando('realizar login') do
    @page.email.set 'jean.visoski@compasso.com.br'
    @page.password.set 'testeaai'
    @page.submit_login.click
  end