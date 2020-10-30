Ext.onReady( function () {

    // stripeRows
    Ext.select('TR:even').addClass('even');

    //Ext.select('TR, #markCol2 div, #markCol3-1 div, #markCol3-2 div').hover(
    Ext.select('TR').hover(
        function () { Ext.fly(this).addClass('hover'); },
        function () { Ext.fly(this).removeClass('hover'); }
    );

    Ext.ux.Lightbox.register('a[rel^=lightbox]');
/* 
        Ext.fly('keywords').on('click', function (e,t) {//{{{
            switch(t.id) {
                case 'vim_speichern_1':
                    Ext.fly('vim_speichern_2').frame('#A88', 1);
                break;
                case'vim_zeile_loeschen_1':Ext.fly('editierbefehle_2').frame('#A88',1, {
                    callback:function() {
                        Ext.fly('vim_zeile_loeschen_2').highlight()
                    }
                });
                break;
                case'vim_aufzeichnen_1':
                    Ext.fly('b29').highlight('', { concurrent:true }).frame('#A88',1);
                break
                case'vim_spalten_1':
                    Ext.fly('b16').highlight('', { concurrent:true }).frame('#A88',1);
                break
                case'zeilenumbruch_1':
                    Ext.fly('b25').highlight('', { concurrent:true }).frame('#A88',1);
                break
            }
        });//}}}
 */
    Ext.fly('tipps').on('click', function(e,t) {//{{{
        switch(t.id) {
            case 'a1':
                Ext.fly('b1').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a2':
                Ext.fly('b2').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a3':
                Ext.fly('b3').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a4':
                Ext.fly('b4').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a5':
                Ext.fly('b5').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a6':
                Ext.fly('b6').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a7':
                Ext.fly('b7').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a8':
                Ext.fly('b8').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a9':
                Ext.fly('b9').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a10':
                Ext.fly('b10').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a11':
                Ext.fly('b11').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a12':
                Ext.fly('b12').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a13':
                Ext.fly('b13').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a14':
                Ext.fly('b14').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a15':
                Ext.fly('b15').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a16':
                Ext.fly('b16').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a17':
                Ext.fly('b17').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a18':
                Ext.fly('b18').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a19':
                Ext.fly('b19').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a20':
                Ext.fly('b20').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a21':
                Ext.fly('b21').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a22':
                Ext.fly('b22').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a23':
                Ext.fly('b23').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a24':
                Ext.fly('b24').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a25':
                Ext.fly('b25').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a26':
                Ext.fly('b26').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a27':
                Ext.fly('b27').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a28':
                Ext.fly('b28').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a29':
                Ext.fly('b29').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a30':
                Ext.fly('b30').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a31':
                Ext.fly('b31').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a32':
                Ext.fly('b32').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a33':
                Ext.fly('b33').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a34':
                Ext.fly('b34').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a35':
                Ext.fly('b35').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a36':
                Ext.fly('b36').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a37':
                Ext.fly('b37').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a38':
                Ext.fly('b38').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a39':
                Ext.fly('b39').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a40':
                Ext.fly('b40').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a41':
                Ext.fly('b41').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a42':
                Ext.fly('b42').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a43':
                Ext.fly('b43').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a44':
                Ext.fly('b44').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a45':
                Ext.fly('b45').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a46':
                Ext.fly('b46').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a47':
                Ext.fly('b47').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a48':
                Ext.fly('b48').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
            case 'a49':
                Ext.fly('b49').highlight('',{concurrent: true}).frame('#A88', 1);
            break;
        }
    });//}}}

    Ext.fly('tabellen').on('click', function(e,t) {//{{{
        switch(t.id) {
            case 'editierbefehle_1':
                Ext.fly('editierbefehle_2').frame('#A88', 1);
            break;
            case 'bewegungsbefehle1_1':
                Ext.fly('bewegungsbefehle1_2').frame('#A88', 1);
            break;
            case 'andereoperationen_1':
                Ext.fly('andereoperationen_2').frame('#A88', 1);
            break;
            case 'erstellenundbearbeiten_1':
                Ext.fly('erstellenundbearbeiten_2').frame('#A88', 1);
            break;
            case 'markierungsbefehle_1':
                Ext.fly('markierungsbefehle_2').frame('#A88', 1);
            break;
            case 'marken_1':
                Ext.fly('marken_2').frame('#A88', 1);
            break;
            case 'bewegungsbefehle2_1':
                Ext.fly('bewegungsbefehle2_2').frame('#A88', 1);
            break;
            case 'textbloecke_1':
                Ext.fly('textbloecke_2').frame('#A88', 1);
            break;
            case 'aufrufoptionen_1':
                Ext.fly('aufrufoptionen_2').frame('#A88', 1);
            break;
        }
    });//}}}

});
