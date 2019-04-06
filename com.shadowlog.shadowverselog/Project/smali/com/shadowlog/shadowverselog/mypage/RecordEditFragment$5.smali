.class Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$5;
.super Ljava/lang/Object;
.source "RecordEditFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->setLeaderChangeEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 6
    .param p1, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p2, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 229
    const/4 v1, 0x0

    .line 230
    .local v1, "leaderID":I
    packed-switch p2, :pswitch_data_0

    .line 248
    :goto_0
    if-lez v1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;

    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0701aa

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->access$300(Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;IZLandroid/widget/Spinner;II)V

    .line 251
    :cond_0
    return-void

    .line 231
    :pswitch_0
    const/4 v1, 0x1

    .line 232
    goto :goto_0

    .line 233
    :pswitch_1
    const/4 v1, 0x2

    .line 234
    goto :goto_0

    .line 235
    :pswitch_2
    const/4 v1, 0x3

    .line 236
    goto :goto_0

    .line 237
    :pswitch_3
    const/4 v1, 0x4

    .line 238
    goto :goto_0

    .line 239
    :pswitch_4
    const/4 v1, 0x5

    .line 240
    goto :goto_0

    .line 241
    :pswitch_5
    const/4 v1, 0x6

    .line 242
    goto :goto_0

    .line 243
    :pswitch_6
    const/4 v1, 0x7

    .line 244
    goto :goto_0

    .line 245
    :pswitch_7
    const/16 v1, 0x8

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x7f070102
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
