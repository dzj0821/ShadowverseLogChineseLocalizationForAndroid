.class public abstract Lrx/android/view/OnClickEvent;
.super Ljava/lang/Object;
.source "OnClickEvent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/view/View;)Lrx/android/view/OnClickEvent;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 25
    new-instance v0, Lrx/android/view/AutoValue_OnClickEvent;

    invoke-direct {v0, p0}, Lrx/android/view/AutoValue_OnClickEvent;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public abstract view()Landroid/view/View;
.end method
