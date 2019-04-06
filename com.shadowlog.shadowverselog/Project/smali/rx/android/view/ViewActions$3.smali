.class final Lrx/android/view/ViewActions$3;
.super Lrx/android/view/ViewAction1;
.source "ViewActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/view/ViewActions;->setClickable(Landroid/view/View;)Lrx/functions/Action1;
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


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lrx/android/view/ViewAction1;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public call(Landroid/view/View;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "clickable"    # Ljava/lang/Boolean;

    .prologue
    .line 75
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 76
    return-void
.end method

.method public bridge synthetic call(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 72
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lrx/android/view/ViewActions$3;->call(Landroid/view/View;Ljava/lang/Boolean;)V

    return-void
.end method
