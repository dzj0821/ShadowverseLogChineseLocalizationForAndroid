.class Lcom/shadowlog/shadowverselog/MyPageActivity$13$1;
.super Ljava/lang/Object;
.source "MyPageActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/MyPageActivity$13;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shadowlog/shadowverselog/MyPageActivity$13;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/MyPageActivity$13;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shadowlog/shadowverselog/MyPageActivity$13;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$13$1;->this$1:Lcom/shadowlog/shadowverselog/MyPageActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 7
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 630
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$13$1;->this$1:Lcom/shadowlog/shadowverselog/MyPageActivity$13;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/MyPageActivity$13;->val$dateBox3:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%02d"

    new-array v3, v6, [Ljava/lang/Object;

    add-int/lit8 v4, p3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%02d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$13$1;->this$1:Lcom/shadowlog/shadowverselog/MyPageActivity$13;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/MyPageActivity$13;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->access$700(Lcom/shadowlog/shadowverselog/MyPageActivity;)Lcom/shadowlog/shadowverselog/struct/MultUnix;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/shadowlog/shadowverselog/struct/MultUnix;->setAdvancedDate(III)V

    .line 632
    return-void
.end method
