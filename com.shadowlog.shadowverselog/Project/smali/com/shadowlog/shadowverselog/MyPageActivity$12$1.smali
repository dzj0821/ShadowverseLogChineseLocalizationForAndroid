.class Lcom/shadowlog/shadowverselog/MyPageActivity$12$1;
.super Ljava/lang/Object;
.source "MyPageActivity.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/MyPageActivity$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shadowlog/shadowverselog/MyPageActivity$12;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/MyPageActivity$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shadowlog/shadowverselog/MyPageActivity$12;

    .prologue
    .line 605
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$12$1;->this$1:Lcom/shadowlog/shadowverselog/MyPageActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 7
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 608
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$12$1;->this$1:Lcom/shadowlog/shadowverselog/MyPageActivity$12;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/MyPageActivity$12;->val$dateBox2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%02d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%02d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$12$1;->this$1:Lcom/shadowlog/shadowverselog/MyPageActivity$12;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/MyPageActivity$12;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->access$600(Lcom/shadowlog/shadowverselog/MyPageActivity;)Lcom/shadowlog/shadowverselog/struct/MultUnix;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/shadowlog/shadowverselog/struct/MultUnix;->setAdvancedTime(II)V

    .line 610
    return-void
.end method
