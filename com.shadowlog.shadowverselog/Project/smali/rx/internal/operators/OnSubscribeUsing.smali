.class public final Lrx/internal/operators/OnSubscribeUsing;
.super Ljava/lang/Object;
.source "OnSubscribeUsing.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Resource:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final dispose:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<-TResource;>;"
        }
    .end annotation
.end field

.field private final observableFactory:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TResource;+",
            "Lrx/Observable",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field private final resourceFactory:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<TResource;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0",
            "<TResource;>;",
            "Lrx/functions/Func1",
            "<-TResource;+",
            "Lrx/Observable",
            "<+TT;>;>;",
            "Lrx/functions/Action1",
            "<-TResource;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/OnSubscribeUsing;, "Lrx/internal/operators/OnSubscribeUsing<TT;TResource;>;"
    .local p1, "resourceFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<TResource;>;"
    .local p2, "observableFactory":Lrx/functions/Func1;, "Lrx/functions/Func1<-TResource;+Lrx/Observable<+TT;>;>;"
    .local p3, "dispose":Lrx/functions/Action1;, "Lrx/functions/Action1<-TResource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeUsing;->resourceFactory:Lrx/functions/Func0;

    .line 40
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeUsing;->observableFactory:Lrx/functions/Func1;

    .line 41
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeUsing;->dispose:Lrx/functions/Action1;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OnSubscribeUsing;)Lrx/functions/Action1;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OnSubscribeUsing;

    .prologue
    .line 30
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeUsing;->dispose:Lrx/functions/Action1;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/OnSubscribeUsing;, "Lrx/internal/operators/OnSubscribeUsing<TT;TResource;>;"
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeUsing;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/OnSubscribeUsing;, "Lrx/internal/operators/OnSubscribeUsing<TT;TResource;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeUsing;->resourceFactory:Lrx/functions/Func0;

    invoke-interface {v3}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v2

    .line 48
    .local v2, "resource":Ljava/lang/Object;, "TResource;"
    new-instance v3, Lrx/internal/operators/OnSubscribeUsing$1;

    invoke-direct {v3, p0, v2}, Lrx/internal/operators/OnSubscribeUsing$1;-><init>(Lrx/internal/operators/OnSubscribeUsing;Ljava/lang/Object;)V

    invoke-static {v3}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 56
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeUsing;->observableFactory:Lrx/functions/Func1;

    invoke-interface {v3, v2}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;

    .line 57
    .local v1, "observable":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-virtual {v1, p1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1    # "observable":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .end local v2    # "resource":Ljava/lang/Object;, "TResource;"
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lrx/Subscriber;->unsubscribe()V

    .line 62
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
