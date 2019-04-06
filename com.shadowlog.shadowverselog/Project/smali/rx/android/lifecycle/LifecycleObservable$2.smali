.class final Lrx/android/lifecycle/LifecycleObservable$2;
.super Ljava/lang/Object;
.source "LifecycleObservable.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/lifecycle/LifecycleObservable;->bindLifecycle(Lrx/Observable;Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p1, "shouldComplete"    # Ljava/lang/Boolean;

    .prologue
    .line 118
    return-object p1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lrx/android/lifecycle/LifecycleObservable$2;->call(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
