.class public Lrx/android/lifecycle/LifecycleObservable;
.super Ljava/lang/Object;
.source "LifecycleObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/android/lifecycle/LifecycleObservable$6;
    }
.end annotation


# static fields
.field private static final ACTIVITY_LIFECYCLE:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/android/lifecycle/LifecycleEvent;",
            "Lrx/android/lifecycle/LifecycleEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final FRAGMENT_LIFECYCLE:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/android/lifecycle/LifecycleEvent;",
            "Lrx/android/lifecycle/LifecycleEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lrx/android/lifecycle/LifecycleObservable$4;

    invoke-direct {v0}, Lrx/android/lifecycle/LifecycleObservable$4;-><init>()V

    sput-object v0, Lrx/android/lifecycle/LifecycleObservable;->ACTIVITY_LIFECYCLE:Lrx/functions/Func1;

    .line 160
    new-instance v0, Lrx/android/lifecycle/LifecycleObservable$5;

    invoke-direct {v0}, Lrx/android/lifecycle/LifecycleObservable$5;-><init>()V

    sput-object v0, Lrx/android/lifecycle/LifecycleObservable;->FRAGMENT_LIFECYCLE:Lrx/functions/Func1;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static bindActivityLifecycle(Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<",
            "Lrx/android/lifecycle/LifecycleEvent;",
            ">;",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "lifecycle":Lrx/Observable;, "Lrx/Observable<Lrx/android/lifecycle/LifecycleEvent;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    sget-object v0, Lrx/android/lifecycle/LifecycleObservable;->ACTIVITY_LIFECYCLE:Lrx/functions/Func1;

    invoke-static {p0, p1, v0}, Lrx/android/lifecycle/LifecycleObservable;->bindLifecycle(Lrx/Observable;Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static bindFragmentLifecycle(Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<",
            "Lrx/android/lifecycle/LifecycleEvent;",
            ">;",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "lifecycle":Lrx/Observable;, "Lrx/Observable<Lrx/android/lifecycle/LifecycleEvent;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    sget-object v0, Lrx/android/lifecycle/LifecycleObservable;->FRAGMENT_LIFECYCLE:Lrx/functions/Func1;

    invoke-static {p0, p1, v0}, Lrx/android/lifecycle/LifecycleObservable;->bindLifecycle(Lrx/Observable;Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static bindLifecycle(Lrx/Observable;Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<",
            "Lrx/android/lifecycle/LifecycleEvent;",
            ">;",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<",
            "Lrx/android/lifecycle/LifecycleEvent;",
            "Lrx/android/lifecycle/LifecycleEvent;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "lifecycle":Lrx/Observable;, "Lrx/Observable<Lrx/android/lifecycle/LifecycleEvent;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p2, "correspondingEvents":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/android/lifecycle/LifecycleEvent;Lrx/android/lifecycle/LifecycleEvent;>;"
    const/4 v3, 0x1

    .line 96
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 97
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Lifecycle and Observable must be given"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_1
    invoke-virtual {p0}, Lrx/Observable;->share()Lrx/Observable;

    move-result-object v0

    .line 104
    .local v0, "sharedLifecycle":Lrx/Observable;, "Lrx/Observable<Lrx/android/lifecycle/LifecycleEvent;>;"
    new-instance v1, Lrx/android/lifecycle/OperatorSubscribeUntil;

    .line 107
    invoke-virtual {v0, v3}, Lrx/Observable;->take(I)Lrx/Observable;

    move-result-object v2

    invoke-virtual {v2, p2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    .line 108
    invoke-virtual {v0, v3}, Lrx/Observable;->skip(I)Lrx/Observable;

    move-result-object v3

    new-instance v4, Lrx/android/lifecycle/LifecycleObservable$3;

    invoke-direct {v4}, Lrx/android/lifecycle/LifecycleObservable$3;-><init>()V

    .line 106
    invoke-static {v2, v3, v4}, Lrx/Observable;->combineLatest(Lrx/Observable;Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lrx/android/lifecycle/LifecycleObservable$2;

    invoke-direct {v3}, Lrx/android/lifecycle/LifecycleObservable$2;-><init>()V

    .line 115
    invoke-virtual {v2, v3}, Lrx/Observable;->takeFirst(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-direct {v1, v2}, Lrx/android/lifecycle/OperatorSubscribeUntil;-><init>(Lrx/Observable;)V

    .line 104
    invoke-virtual {p1, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public static bindUntilLifecycleEvent(Lrx/Observable;Lrx/Observable;Lrx/android/lifecycle/LifecycleEvent;)Lrx/Observable;
    .locals 2
    .param p2, "event"    # Lrx/android/lifecycle/LifecycleEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<",
            "Lrx/android/lifecycle/LifecycleEvent;",
            ">;",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/android/lifecycle/LifecycleEvent;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "lifecycle":Lrx/Observable;, "Lrx/Observable<Lrx/android/lifecycle/LifecycleEvent;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Lifecycle and Observable must be given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    new-instance v0, Lrx/android/lifecycle/OperatorSubscribeUntil;

    new-instance v1, Lrx/android/lifecycle/LifecycleObservable$1;

    invoke-direct {v1, p2}, Lrx/android/lifecycle/LifecycleObservable$1;-><init>(Lrx/android/lifecycle/LifecycleEvent;)V

    .line 45
    invoke-virtual {p0, v1}, Lrx/Observable;->takeFirst(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/android/lifecycle/OperatorSubscribeUntil;-><init>(Lrx/Observable;)V

    .line 43
    invoke-virtual {p1, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
