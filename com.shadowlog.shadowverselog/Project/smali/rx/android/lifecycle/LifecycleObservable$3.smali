.class final Lrx/android/lifecycle/LifecycleObservable$3;
.super Ljava/lang/Object;
.source "LifecycleObservable.java"

# interfaces
.implements Lrx/functions/Func2;


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
        "Lrx/functions/Func2",
        "<",
        "Lrx/android/lifecycle/LifecycleEvent;",
        "Lrx/android/lifecycle/LifecycleEvent;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lrx/android/lifecycle/LifecycleEvent;Lrx/android/lifecycle/LifecycleEvent;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "bindUntilEvent"    # Lrx/android/lifecycle/LifecycleEvent;
    .param p2, "lifecycleEvent"    # Lrx/android/lifecycle/LifecycleEvent;

    .prologue
    .line 112
    if-ne p2, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    check-cast p1, Lrx/android/lifecycle/LifecycleEvent;

    check-cast p2, Lrx/android/lifecycle/LifecycleEvent;

    invoke-virtual {p0, p1, p2}, Lrx/android/lifecycle/LifecycleObservable$3;->call(Lrx/android/lifecycle/LifecycleEvent;Lrx/android/lifecycle/LifecycleEvent;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
