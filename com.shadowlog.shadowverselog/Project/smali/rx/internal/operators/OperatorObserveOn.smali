.class public final Lrx/internal/operators/OperatorObserveOn;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;,
        Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final scheduler:Lrx/Scheduler;


# direct methods
.method public constructor <init>(Lrx/Scheduler;)V
    .locals 0
    .param p1, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn;, "Lrx/internal/operators/OperatorObserveOn<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lrx/internal/operators/OperatorObserveOn;->scheduler:Lrx/Scheduler;

    .line 49
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn;, "Lrx/internal/operators/OperatorObserveOn<TT;>;"
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorObserveOn;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 2
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
    .line 53
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn;, "Lrx/internal/operators/OperatorObserveOn<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn;->scheduler:Lrx/Scheduler;

    instance-of v0, v0, Lrx/schedulers/ImmediateScheduler;

    if-eqz v0, :cond_1

    .line 60
    .end local p1    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :cond_0
    :goto_0
    return-object p1

    .line 56
    .restart local p1    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn;->scheduler:Lrx/Scheduler;

    instance-of v0, v0, Lrx/schedulers/TrampolineScheduler;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn;->scheduler:Lrx/Scheduler;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;-><init>(Lrx/Scheduler;Lrx/Subscriber;)V

    move-object p1, v0

    goto :goto_0
.end method
