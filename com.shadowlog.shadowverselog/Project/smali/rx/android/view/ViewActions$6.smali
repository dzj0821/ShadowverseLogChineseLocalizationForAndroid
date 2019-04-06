.class final Lrx/android/view/ViewActions$6;
.super Lrx/android/view/ViewAction1;
.source "ViewActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/view/ViewActions;->setVisibility(Landroid/view/View;I)Lrx/functions/Action1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/android/view/ViewAction1",
        "<",
        "Landroid/view/View;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$visibilityOnFalse:I


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 144
    iput p2, p0, Lrx/android/view/ViewActions$6;->val$visibilityOnFalse:I

    invoke-direct {p0, p1}, Lrx/android/view/ViewAction1;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public call(Landroid/view/View;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 147
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 148
    .local v0, "visibility":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 149
    return-void

    .line 147
    .end local v0    # "visibility":I
    :cond_0
    iget v0, p0, Lrx/android/view/ViewActions$6;->val$visibilityOnFalse:I

    goto :goto_0
.end method

.method public bridge synthetic call(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 144
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lrx/android/view/ViewActions$6;->call(Landroid/view/View;Ljava/lang/Boolean;)V

    return-void
.end method
