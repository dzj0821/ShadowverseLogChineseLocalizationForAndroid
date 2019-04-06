.class Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$4;
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
    .line 199
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$4;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 6
    .param p1, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p2, "i"    # I

    .prologue
    const/4 v4, 0x0

    .line 202
    const/4 v1, 0x0

    .line 203
    .local v1, "leaderID":I
    packed-switch p2, :pswitch_data_0

    .line 221
    :goto_0
    if-lez v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$4;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$4;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f0701a8

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->access$300(Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;IZLandroid/widget/Spinner;II)V

    .line 224
    :cond_0
    return-void

    .line 204
    :pswitch_0
    const/4 v1, 0x1

    .line 205
    goto :goto_0

    .line 206
    :pswitch_1
    const/4 v1, 0x2

    .line 207
    goto :goto_0

    .line 208
    :pswitch_2
    const/4 v1, 0x3

    .line 209
    goto :goto_0

    .line 210
    :pswitch_3
    const/4 v1, 0x4

    .line 211
    goto :goto_0

    .line 212
    :pswitch_4
    const/4 v1, 0x5

    .line 213
    goto :goto_0

    .line 214
    :pswitch_5
    const/4 v1, 0x6

    .line 215
    goto :goto_0

    .line 216
    :pswitch_6
    const/4 v1, 0x7

    .line 217
    goto :goto_0

    .line 218
    :pswitch_7
    const/16 v1, 0x8

    goto :goto_0

    .line 203
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
