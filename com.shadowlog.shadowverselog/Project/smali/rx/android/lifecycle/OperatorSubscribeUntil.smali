.class final Lrx/android/lifecycle/OperatorSubscribeUntil;
.super Ljava/lang/Object;
.source "OperatorSubscribeUntil.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final other:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lrx/android/lifecycle/OperatorSubscribeUntil;, "Lrx/android/lifecycle/OperatorSubscribeUntil<TT;TR;>;"
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lrx/android/lifecycle/OperatorSubscribeUntil;->other:Lrx/Observable;

    .line 33
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    .local p0, "this":Lrx/android/lifecycle/OperatorSubscribeUntil;, "Lrx/android/lifecycle/OperatorSubscribeUntil<TT;TR;>;"
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/android/lifecycle/OperatorSubscribeUntil;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lrx/android/lifecycle/OperatorSubscribeUntil;, "Lrx/android/lifecycle/OperatorSubscribeUntil<TT;TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/observers/SerializedSubscriber;

    invoke-direct {v0, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    .line 39
    .local v0, "parent":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget-object v1, p0, Lrx/android/lifecycle/OperatorSubscribeUntil;->other:Lrx/Observable;

    new-instance v2, Lrx/android/lifecycle/OperatorSubscribeUntil$1;

    invoke-direct {v2, p0, p1, v0}, Lrx/android/lifecycle/OperatorSubscribeUntil$1;-><init>(Lrx/android/lifecycle/OperatorSubscribeUntil;Lrx/Subscriber;Lrx/Subscriber;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 58
    return-object v0
.end method
