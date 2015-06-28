(require 'org-publish)

(setq org-publish-project-alist
      '(("writing"
         ;; Path to org content
          :base-directory "~/code/seamustuohy/writing"
          :publishing-directory "~/code/elationfoundation.github.io/all/writing/_posts"
          :base-extension "org"
          :publishing-function org-publish-org-to-markdown
          :body-only t ;; Only export section between <body> </body>
          :html-extension "html")
        ("projects"
         ;; Path to org content
          :base-directory "~/code/seamustuohy/projects"
          :base-extension "org"
          :publishing-directory "~/code/elationfoundation.github.io/all/projects/_posts"
          :publishing-function org-publish-org-to-markdown
          :body-only t ;; Only export section between <body> </body>
          :html-extension "html")
        ("images"
         ;; Path to org content
         :base-directory "~/code/seamustuohy/images"
         :base-extension "jpg\\|gif\\|png\\|svg"
         :publishing-directory "~/code/elationfoundation.github.io/images"
         :publishing-function org-publish-attachment )
        ("website" :components ("writing" "projects"))))


(org-publish "website")
