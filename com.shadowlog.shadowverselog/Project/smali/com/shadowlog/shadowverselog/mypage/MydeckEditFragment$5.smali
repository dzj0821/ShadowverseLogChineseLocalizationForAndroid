.class Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$5;
.super Ljava/lang/Object;
.source "MydeckEditFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->setLeaderChangeEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .param p1, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p2, "i"    # I

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "leaderID":I
    packed-switch p2, :pswitch_data_0

    .line 238
    :goto_0
    if-lez v0, :cond_0

    .line 239
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0701a8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->access$100(Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;ILandroid/widget/Spinner;I)V

    .line 241
    :cond_0
    return-void

    .line 221
    :pswitch_0
    const/4 v0, 0x1

    .line 222
    goto :goto_0

    .line 223
    :pswitch_1
    const/4 v0, 0x2

    .line 224
    goto :goto_0

    .line 225
    :pswitch_2
    const/4 v0, 0x3

    .line 226
    goto :goto_0

    .line 227
    :pswitch_3
    const/4 v0, 0x4

    .line 228
    goto :goto_0

    .line 229
    :pswitch_4
    const/4 v0, 0x5

    .line 230
    goto :goto_0

    .line 231
    :pswitch_5
    const/4 v0, 0x6

    .line 232
    goto :goto_0

    .line 233
    :pswitch_6
    const/4 v0, 0x7

    .line 234
    goto :goto_0

    .line 235
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x7f0700f8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
