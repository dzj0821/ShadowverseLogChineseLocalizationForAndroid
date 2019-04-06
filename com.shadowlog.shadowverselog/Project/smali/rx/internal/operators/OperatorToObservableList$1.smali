.class Lrx/internal/operators/OperatorToObservableList$1;
.super Lrx/Subscriber;
.source "OperatorToObservableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorToObservableList;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private completed:Z

.field final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorToObservableList;

.field final synthetic val$o:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorToObservableList;Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 1
    .param p1, "this$0"    # Lrx/internal/operators/OperatorToObservableList;

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/OperatorToObservableList$1;, "Lrx/internal/operators/OperatorToObservableList.1;"
    .local p2, "op":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorToObservableList$1;->this$0:Lrx/internal/operators/OperatorToObservableList;

    iput-object p3, p0, Lrx/internal/operators/OperatorToObservableList$1;->val$o:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorToObservableList$1;->completed:Z

    .line 46
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorToObservableList$1;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .prologue
    .line 56
    .local p0, "this":Lrx/internal/operators/OperatorToObservableList$1;, "Lrx/internal/operators/OperatorToObservableList.1;"
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lrx/internal/operators/OperatorToObservableList$1;->completed:Z

    .line 72
    iget-object v1, p0, Lrx/internal/operators/OperatorToObservableList$1;->val$o:Lrx/Subscriber;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lrx/internal/operators/OperatorToObservableList$1;->list:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 73
    iget-object v1, p0, Lrx/internal/operators/OperatorToObservableList$1;->val$o:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorToObservableList$1;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 81
    .local p0, "this":Lrx/internal/operators/OperatorToObservableList$1;, "Lrx/internal/operators/OperatorToObservableList.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorToObservableList$1;->val$o:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 82
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lrx/internal/operators/OperatorToObservableList$1;, "Lrx/internal/operators/OperatorToObservableList.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorToObservableList$1;->completed:Z

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lrx/internal/operators/OperatorToObservableList$1;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/OperatorToObservableList$1;, "Lrx/internal/operators/OperatorToObservableList.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorToObservableList$1;->request(J)V

    .line 51
    return-void
.end method
