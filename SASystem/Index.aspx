<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SASystem.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
     <div class="owl-carousel slide-one-item">
      <a href="#"><img src="images/child-school.jpg" alt="Image" class="img-fluid"></a>
      <a href="#"><img src="images/child-school2.jpg" alt="Image" class="img-fluid"></a>
    </div>
    
    <div class="d-block d-md-flex intro-engage">
      <div class="">
        <h2> Rescue An Orphan</h2>
        <p>Support an orphanage center or raised an orphan. Give an orphan a family again.</p>
      </div>
      <div>
        <h2>Feed The Hungry</h2>
        <p>A mission to end provide food for every household through farming.</p>
      </div>
      <div>
        <h2>Free Education</h2>
        <p>Educate a Child today and put him/her on the path for greatness. Every child counts</p>
      </div>
    </div>

    <div class="site-section bg-gray-1 overlay counter" id="about-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-lg-6 mb-4">
            <figure class="" data-aos="fade">
              <a href="#" class="popup-vimeo">
                <span class="icon"><span class="icon-play"></span></span>
                <img src="images/mall-idris-2.jpeg" alt="Image" class="img-fluid">
              </a>
            </figure>
          </div>
          <div class="col-lg-5 ml-auto align-self-lg-center">
            <h2 class="text-black mb-4 text-uppercase section-title">Our Mission</h2>
            <p class="text-black">Our Mission is to provide education to childrens and youths by giving them financial support to pay thier school fees.</p>
            <p class="text-black">We intend to crave out the next set of intectuals to make our community and nation better.</p>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 mb-4 col-lg-0 col-lg-6">
            <div class="block-counter-1">
              <span class="number"><span data-number=""><label id="lblLGA" runat="server" class="col-form-label"></label></span></span>
              <span class="caption text-black">Number of LGAs</span>
            </div>
          </div>
          <div class="col-md-6 mb-4 col-lg-0 col-lg-6">
            <div class="block-counter-1">
              <span class="number"><span data-number=""><label id="lblApplications" runat="server" class="col-form-label"></label></span></span>
              <span class="caption text-black">Number of Applications</span>
            </div>
          </div>
          <%--<div class="col-md-6 mb-4 col-lg-0 col-lg-3">
            <div class="block-counter-1">
              <span class="number"><span data-number="3293">0</span></span>
              <span class="caption text-black">Number of Volunteers</span>
            </div>
          </div>
          <div class="col-md-6 mb-4 col-lg-0 col-lg-3">
            <div class="block-counter-1">
              <span class="number"><span data-number="1212">0</span></span>
              <span class="caption text-black">Number of Orphans</span>
            </div>
          </div>--%>
        </div>
      </div>
    </div>

    <div class="site-section bg-light counter" id="discover-section">
      <div class="container">
        <div class="row mb-5 justify-content-center">
          <div class="col-md-7 text-center">
            <div class="block-heading-1">
              <h2 class="text-black text-uppercase">Discover</h2>
              <p>This platform was created in order to extend the reach of gesture to all environs in Niger State. We are determine to make every house every community a better place by empowering the next inteclectuals of tommorrow.</p>
            </div>
          </div>
        </div>
        <div class="row mb-5">

          <div class="col-lg-6 mb-5">
            <img src="images/mall-idris-3.jpeg" alt="Image"  height="200" width="360" class="img-fluid">
          </div>
          <div class="col-lg-5 ml-auto align-self-center">
            <h3 class="text-black text-uppercase mb-4">Education for All</h3>
            <p class="mb-5">Mall. Idris Usman was determined to extend a helping hand to every child with zeal and passion to be education a scholarship support to ease the burden of school fees payment for every parents.</p>

            <div class="row mb-4">
              <%--<div class="col-md-6">
                <div class="block-counter-1 block-counter-1-sm">
                  <span class="number"><span data-number="15">0</span></span>
                  <span class="caption text-black">Schools</span>
                </div>
              </div>
              <div class="col-md-6">
                <div class="block-counter-1 block-counter-1-sm">
                  <span class="number"><span data-number="1039">0</span></span>
                  <span class="caption text-black">Students</span>
                </div>
              </div>--%>
            </div>

            
          </div>

          
          
        </div>

        <div class="row mb-5">

          <div class="col-lg-6 mb-5 order-lg-2">
            <img src="images/mall-idris.jpeg" alt="Image" height="200" class="img-fluid">
          </div>
          <div class="col-lg-5 mr-auto align-self-center order-lg-1">
            <h3 class="text-black text-uppercase mb-4">Say Yes to Education</h3>
            <p class="mb-5">Walking on the path to see that the level and rate of educated youths increases in the state.</p>

            <div class="row text-center">
              <div class="col-md-6 ">
                <div class="block-counter-1">
                  <span class="number"><span data-number=""><label id="lblChildren" runat="server" class="col-form-label"></label></span></span>
                  <span class="caption text-black">Children</span>
                </div>
              </div>
              <div class="col-md-6 ">
                <div class="block-counter-1">
                  <span class="number"><span  data-number=""><label id="lblAdults" runat="server" class="col-form-label"></label></span></span>
                  <span class="caption text-black">Adults</span>
                </div>
              </div>
            </div>

          </div>
      </div>
    </div>
  </div>

    <div class="site-section bg-image overlay" style="background-image: url('images/hero_1_no-text.jpg');" id="donate-section">
      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-lg-5 text-center">
            <h2 class="text-white mb-4">Educate a Child Today! <br /> You May Change Lives Forever</h2>
            <%--<p><a href="#" class="btn btn-primary px-4 py-3 btn-block">Donate Now</a></p>--%>
          </div>
        </div>
      </div>
    </div>



    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-4 mb-4 text-center">
            <span class="flaticon-piggy-bank d-block mb-3 display-3 text-secondary"></span>
            <h3 class="text-primary h4 mb-2">Scholarship</h3>
            <p>Save a child from school drop out today.</p>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 text-center">
            <span class="flaticon-blood d-block mb-3 display-3 text-secondary"></span>
            <h3 class="text-primary h4 mb-2">Medical Health</h3>
            <p>Provides medical assistance to students.</p>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 text-center">
            <span class="flaticon-food d-block mb-3 display-3 text-secondary"></span>
            <h3 class="text-primary h4 mb-2">Food for the Poor</h3>
            <p>Save a child from the street, save a child from illegal hawking.</p>
          </div>

          <div class="col-md-6 col-lg-4 mb-4 text-center">
            <span class="flaticon-donation d-block mb-3 display-3 text-secondary"></span>
            <h3 class="text-primary h4 mb-2">Help &amp; Love</h3>
            <p>Make your community united by extending a helping hand to them.</p>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 text-center">
            <span class="flaticon-dollar d-block mb-3 display-3 text-secondary"></span>
            <h3 class="text-primary h4 mb-2">Give To The Needy</h3>
            <p>Give hope by showing them kindness.</p>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 text-center">
            <span class="flaticon-unity d-block mb-3 display-3 text-secondary"></span>
            <h3 class="text-primary h4 mb-2">Volunteer</h3>
            <p>Be part of your community development programmes.</p>
          </div>

        </div>
      </div>
    </div>



    <div class="site-section" id="team-section">
      <div class="container">
        <div class="row mb-5 justify-content-center">
          <div class="col-md-7 text-center">
              <h2 class="text-black text-uppercase section-title">Our Leadership</h2>
              <p>Kind hearted personality who decide a give every individual a helping hand to achieving their goals.</p>
          </div>
        </div>
        <div class="row d-flex justify-content-center">
          <div class="col-lg-4 col-md-6 mb-4 mb-lg-0" data-aos="fade-up">
            <div class="block-team-member-1 text-center rounded">
              <figure>
                <img src="images/shakur.jpg" alt="Image" class="img-fluid rounded-circle">
              </figure>
              <h3 class="font-size-20 text-white">Ahmad Shakur</h3>
              <span class="d-block font-gray-5 letter-spacing-1 text-uppercase font-size-12 mb-3">Secretary</span>
              <p class="px-3 mb-3">Secretary and assistant director operations</p>
              <div class="block-social-1">
                <a href="#" class="btn border-w-2 rounded primary-primary-outline--hover"><span class="icon-facebook"></span></a>
                <a href="#" class="btn border-w-2 rounded primary-primary-outline--hover"><span class="icon-twitter"></span></a>
                <a href="#" class="btn border-w-2 rounded primary-primary-outline--hover"><span class="icon-instagram"></span></a>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4 mb-lg-0" data-aos="fade-up" data-aos-delay="100">
            <div class="block-team-member-1 text-center rounded">
              <figure>
                <img src="images/mall-idris.jpeg" alt="Image" class="img-fluid rounded-circle">
              </figure>
              <h3 class="font-size-20 text-white">Mall. Idrisu Usman</h3>
              <span class="d-block font-gray-5 letter-spacing-1 text-uppercase font-size-12 mb-3">Founder</span>
              <p class="px-3 mb-3">The Founder and sponsor of this foundation</p>
              <div class="block-social-1">
                <a href="#" class="btn border-w-2 rounded primary-primary-outline--hover"><span class="icon-facebook"></span></a>
                <a href="#" class="btn border-w-2 rounded primary-primary-outline--hover"><span class="icon-twitter"></span></a>
                <a href="#" class="btn border-w-2 rounded primary-primary-outline--hover"><span class="icon-instagram"></span></a>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4 mb-lg-0" data-aos="fade-up" data-aos-delay="200">
            <div class="block-team-member-1 text-center rounded">
              <figure>
                <img src="images/abdullahi.jpeg" alt="Image" class="img-fluid rounded-circle">
              </figure>
              <h3 class="font-size-20 text-white">Mr. Abdullahi Usman</h3>
              <span class="d-block font-gray-5 letter-spacing-1 text-uppercase font-size-12 mb-3">Manager</span>
              <p class="px-3 mb-3">Managar and director operations</p>
              <div class="block-social-1">
                <a href="#" class="btn border-w-2 rounded primary-primary-outline--hover"><span class="icon-facebook"></span></a>
                <a href="#" class="btn border-w-2 rounded primary-primary-outline--hover"><span class="icon-twitter"></span></a>
                <a href="#" class="btn border-w-2 rounded primary-primary-outline--hover"><span class="icon-instagram"></span></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">

</asp:Content>
