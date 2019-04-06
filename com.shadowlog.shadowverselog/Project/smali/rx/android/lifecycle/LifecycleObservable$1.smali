.class final Lrx/android/lifecycle/LifecycleObservable$1;
.super Ljava/lang/Object;
.source "LifecycleObservable.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/lifecycle/LifecycleObservable;->bindUntilLifecycleEvent(Lrx/Observable;Lrx/Observable;Lrx/android/lifecycle/LifecycleEvent;)Lrx/Observable;
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
        "Lrx/android/lifecycle/LifecycleEvent;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$event:Lrx/android/lifecycle/LifecycleEvent;


# direct methods
.method constructor <init>(Lrx/android/lifecycle/LifecycleEvent;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lrx/android/lifecycle/LifecycleObservable$1;->val$event:Lrx/android/lifecycle/LifecycleEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lrx/android/lifecycle/LifecycleEvent;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "lifecycleEvent"    # Lrx/android/lifecycle/LifecycleEvent;

    .prologue
    .line 48
    iget-object v0, p0, Lrx/android/lifecycle/LifecycleObservable$1;->val$event:Lrx/android/lifecycle/LifecycleEvent;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    check-cast p1, Lrx/android/lifecycle/LifecycleEvent;

    invoke-virtual {p0, p1}, Lrx/android/lifecycle/LifecycleObservable$1;->call(Lrx/android/lifecycle/LifecycleEvent;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
