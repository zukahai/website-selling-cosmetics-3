@extends("user.layout.main")

@section("title")
    About
@endsection

@section("tag")
    @php
        $tag = "about";
    @endphp
@endsection

@section('css')
    <style>
        .productHome{
            width: 300px;
            height: 350px;
            object-fit: cover;
        }

         .product{
             width: 60px;
             height: 60px;
             object-fit: cover;
         }
    </style>
@endsection

@section("content")
    <!-- Content page -->
    <section class="bg0 p-t-75 p-b-120">
        <div class="container">
            <div class="row p-b-148">
                <div class="col-md-7 col-lg-8">
                    <div class="p-t-7 p-r-85 p-r-15-lg p-r-0-md">
                        <h3 class="mtext-111 cl2 p-b-16">
                            Our Story
                        </h3>

                        <p class="stext-113 cl6 p-b-26">
                            The customer is very important, the customer will be followed by the customer. In fact, it is not the author of mass basketball. A mass of disease but hate. Everyone at the vehicles land, but tincidunt propagandize. And when the orcs are born, the mountains will give birth to feathers and great arrows, and a ridiculous mouse will be born. Maecenas is a man of various interests, and the members of his family are afraid of homework. Children are living with disease, old age and children, and they are suffering from hunger and poverty. Maecenas pregnant just eu arcu egestas convallis. There was no need to drink, for it was said that he needed time. Until then, it is not as if it is a product of life or promotion. Smartphones As is the diam. Until the sauce of euismod tortor, it needs easy diam of the throat and Diseases from time to time.
                        </p>

                        <p class="stext-113 cl6 p-b-26">
                            Until we get pregnant, we will always have a good sauce. He needs a big bag. Some members have some funding. As an ecological school in the vehicles. Children's homework and medical as pregnant. It was a weekend. Until the arrows of the bow were easy, the members of the football team were shot with arrows. Even the kids, the big or the said makeup, and not just the eleifends, or the developers was the bow to be a salad. But the makeup, the base, is made to be convenient, which the valley itself wants, and the most important thing is that it is small and small.
                        </p>

                        <p class="stext-113 cl6 p-b-26">
                            Any questions? Let us know in store at 470 Tran Dai Nghia, Da Nang, Viet Nam or call us on (+84) 528 777 528
                        </p>
                    </div>
                </div>

                <div class="col-11 col-md-5 col-lg-4 m-lr-auto">
                    <div class="how-bor1 ">
                        <div class="hov-img0">
                            <img src="{{asset('asset/user/images/about-01.jpg')}}" alt="IMG">
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="order-md-2 col-md-7 col-lg-8 p-b-30">
                    <div class="p-t-7 p-l-85 p-l-15-lg p-l-0-md">
                        <h3 class="mtext-111 cl2 p-b-16">
                            Our Mission
                        </h3>

                        <p class="stext-113 cl6 p-b-26">
                            Mauris is not a great lacinia. But neither does the pill pain. Vestibulum rhoncus dignissim risus, but it was to be followed. Children are living with disease, old age and children, and they are suffering from hunger and poverty. There is no great mauris, but the hatred of the valley, in the quiver of great gravitas. But now it's time for my employee to leave. I hate cartoon life. Pellentesque ac velit egestas, luctus arcu non, laoreet mauris. But at the same time, the result is hateful in front of the airline. As a young man, the weekend in the members, do not hate the gate. For the time being, the urn of my life is my vestibule, and there is no poison in it. But before pregnancy. The purest author at the greatest euismod lake. Pellentesque vulputate mass as nisl hendrerit, needs an element of free target.
                        </p>

                        <div class="bor16 p-l-29 p-b-9 m-t-22">
                            <p class="stext-114 cl6 p-r-40 p-b-11">
                                Creativity is just connecting things. When you ask creative people how they did something, they feel a little guilty because they didn't really do it, they just saw something. It seemed obvious to them after a while.
                            </p>

                            <span class="stext-111 cl8">
								- Steve Job’s
							</span>
                        </div>
                    </div>
                </div>

                <div class="order-md-1 col-11 col-md-5 col-lg-4 m-lr-auto p-b-30">
                    <div class="how-bor2">
                        <div class="hov-img0">
                            <img src="{{asset('asset/user/images/about-02.jpg')}}" alt="IMG">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
