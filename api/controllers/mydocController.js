'use strict';
exports.list_all_tasks = function(req, res) {
        var cache = req.app.get('cache');
        res.json(cache.exportJson());
};

exports.create_a_task = function(req, res) {
        var cache = req.app.get('cache');
        cache.put(req.body.id, req.body);
        console.log(req.body)
        res.json({ message: 'Document created!' });
};

exports.read_a_task = function(req, res) {
        var cache = req.app.get('cache');
        res.json(cache.get(req.body.id));
};

exports.update_a_task = function(req, res) {
        var cache = req.app.get('cache');
		cache.put(req.body.id, req.body);
        console.log(req.body)
		res.json({ message: 'Document updated!' });
};

exports.delete_a_task = function(req, res) {
        var cache = req.app.get('cache');
		cache.del(req.params.docId);
        res.json({ message: 'Document deleted!' });
};



